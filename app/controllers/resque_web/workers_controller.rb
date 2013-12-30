module ResqueWeb
  class WorkersController < ApplicationController
    before_filter :display_subtabs

    def show
      if params[:id] && params[:id] != 'all'
        @workers = view_context.worker_hosts[params[:id]].map { |id| Resque::WorkerRegistry.find(id) }
      else
        @workers = Resque::WorkerRegistry.all
      end
    end

    def display_subtabs
      set_subtabs view_context.worker_hosts.map(&:first)
    end
    private :display_subtabs
  end
end
