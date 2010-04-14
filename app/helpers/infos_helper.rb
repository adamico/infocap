module InfosHelper
  def info_state(instance)
    case instance.state
    when "unverified"
      haml_concat "?"
    when "verified"
      haml_concat "OK"
    else
      haml_concat "X"
    end
  end
  def state_actions(instance)
    state = instance.state
    category = instance.category
    case state
    when "unverified"
      link_name = "Vérifier"
      link_path = verifier_category_info_path(category, instance)
    when "verified"
      link_name = "Archiver"
      link_path = disable_category_info_path(category, instance)
    when "invalid"
      link_name = "Suspendre"
      link_path = suspend_category_info_path(category, instance)
    end
    haml_tag :li do
      haml_concat(link_to link_name, link_path, :method => :put)
    end
  end
end
