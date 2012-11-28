class Fluent::R18Output < Fluent::Output
  Fluent::Plugin.register_output('r18', self)

  def emit(tag, es, chain)
    es.each do |time, record|
      Fluent::Engine.emit(tag, time, record)
    end

    chain.next
  end
end
