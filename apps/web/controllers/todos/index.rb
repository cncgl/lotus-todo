module Web::Controllers::Todos
  class Index
    include Web::Action

    expose :todos

    def call(params)
      @todos = TodoRepository.all
    end
  end
end
