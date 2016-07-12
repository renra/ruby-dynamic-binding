class ContextualProc < Proc
  def apply(bind, *args)
    @binding = bind
    instance_exec(*args, &self)
  end

  def method_missing(m, *args)
    begin
      method = eval("method(%s)" % m.inspect, @binding)
    rescue NameError
    else
      return method.call(*args)
    end
    begin
      value = eval(m.to_s, @binding)
      return value
    rescue NameError
    end

    super
  end
end
