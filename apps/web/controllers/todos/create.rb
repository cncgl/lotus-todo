module Web::Controllers::Todos
  class Create
    include Web::Action

    expose :todo

    params do
      param :todo do
        param :status, presence: true
        param :title, presence: true
      end
    end

    def call(params)
      if params.valid?
        @todo = TodoRepository.create(Todo.new(params[:todo]))

        redirect_to '/todos'
      end
    end
  end
end
