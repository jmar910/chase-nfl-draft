ChaseDraft::Application.routes.draw do
	root 'picks#index'

	get '/status' => 'picks#draft_status', as: :status

	get '/picks' => 'picks#index', as: :picks
	get '/picks/:id' => 'picks#show', as: :picks_show
	put '/picks/:id' => 'picks#pick_player', as: :picks_acquire

	get '/teams' => 'teams#index', as: :teams
	get '/teams/:id' => 'teams#show', as: :teams_show

	get '/players' => 'players#index', as: :players
end
