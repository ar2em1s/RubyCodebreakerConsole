# frozen_string_literal: true

module CodebreakerConsole
  class GameConsole
    attr_accessor :game, :user

    def start
      transit_to(GreetingState.new)
    end

    def transit_to(game_state)
      @game_state = game_state
      @game_state.context = self
      @game_state.execute
    end
  end
end
