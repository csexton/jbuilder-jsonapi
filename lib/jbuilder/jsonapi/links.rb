class Jbuilder
  def links! model, *args
    args.each do |arg|
      if model.reflections[arg].collection?
        _set_value arg, model.send(arg).map(&:id)
      else
        _set_value arg, model.send(arg).id
      end
    end
  end
end
