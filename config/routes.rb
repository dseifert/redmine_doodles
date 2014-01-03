#custom routes for this plugin
RedmineApp::Application.routes.draw do
  shallow do
    resources :projects, :only => [] do
      resources :doodles do
        post :preview
        get :member
        post :lock
        resources :doodle_answers
      end
    end
  end
end
