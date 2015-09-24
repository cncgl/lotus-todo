module Web::Controllers::Todos
  class Create
    include Web::Action

    expose :todo

    def call(params)
      @todo = TodoRepository.create(Todo.new(params[:todo]))

      redirect_to '/todos'
    end
  end
end
