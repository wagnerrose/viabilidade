class EquipamentosDatatable
  delegate :params, :h, :link_to, :number_to_currency, to: :@view

  def initialize(view)
    @view = view
  end

  def as_json(options = {})
    {
      sEcho: params[:sEcho].to_i,
      iTotalRecords: Equipamento.count,
      iTotalDisplayRecords: equipamentos.total_entries,
      aaData: data
    }
  end

private

  def data
    equipamentos.map do |equipamento|
      [
        link_to(equipamento.designacao, equipamento),
        equipamento.descricao,
        equipamento.tipo,
        equipamento.enderecamento,
        equipamento.status,
        equipamento.estacao.pop
      ]
    end
  end

  def equipamentos
    @equipamentos ||= fetch_equipamentos
  end

  def fetch_equipamentos
    equipamentos = Equipamento.order("#{sort_column} #{sort_direction}")
    equipamentos = equipamentos.page(page).per_page(per_page)
    if params[:sSearch].present?
      equipamentos = equipamentos.where("designacao like :search or descricao like :search", search: "%#{params[:sSearch]}%")
    end
    equipamentos
  end

  def page
    params[:iDisplayStart].to_i/per_page + 1
  end

  def per_page
    params[:iDisplayLength].to_i > 0 ? params[:iDisplayLength].to_i : 10
  end

  def sort_column
    columns = %w[designacao descricao tipo enderecamento status estacao_id]
    columns[params[:iSortCol_0].to_i]
  end

  def sort_direction
    params[:sSortDir_0] == "desc" ? "desc" : "asc"
  end
end
