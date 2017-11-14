class ContatosDatatable
  delegate :params, :h, :link_to, :number_to_currency, to: :@view

  def initialize(view)
    @view = view
  end

  def as_json(options = {})
    {
      sEcho: params[:sEcho].to_i,
      iTotalRecords: Contato.count,
      iTotalDisplayRecords: contatos.total_entries,
      aaData: data
    }
  end

private

  def data
    contatos.map do |contato|
      [
        link_to(contato.nome, contato),
        contato.empresa.razao,
        contato.email,
        contato.telefone,
        contato.obs,
      ]
    end
  end

  def contatos
    @contatos ||= fetch_contatos
  end

  def fetch_contatos
    contatos = Contato.order("#{sort_column} #{sort_direction}")
    contatos = contatos.page(page).per_page(per_page)
    if params[:sSearch].present?
      contatos = contatos.where("nome like :search or email like :search", search: "%#{params[:sSearch]}%")
    end
    contatos
  end

  def page
    params[:iDisplayStart].to_i/per_page + 1
  end

  def per_page
    params[:iDisplayLength].to_i > 0 ? params[:iDisplayLength].to_i : 10
  end

  def sort_column
    columns = %w[nome email telefone empresa_id obs]
    columns[params[:iSortCol_0].to_i]
  end

  def sort_direction
    params[:sSortDir_0] == "desc" ? "desc" : "asc"
  end
end
