class AgentsController < ApplicationController
  def create
    @agent 
    if @agent.save
      redirect_to agent_path
    end
  end

  def index
    @agent = Agent.find(params[:id]) 
  end
  
end
