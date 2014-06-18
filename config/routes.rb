EResearchApp::Application.routes.draw do
  resources :research_applications do 
    resources :researchers do
      resources :co_researchers 
    end
  end

    resources :research_contexts 
    resources :sponsors    
    resources :goals     
    resources :benefits

    resources :methodology_procedures do
      resources :research_elements
      resources :research_samplings
      resources :research_benefit_and_risks do
        resources :safe_guards
      end
    end

    resources :methodology_research_design_infos do
      resources :research_data
      resources :requested_data
      resources :data_analysis_methods      
      resources :qualitative_designs
    end

  get 'add_co_researcher', to: "researcher#add_co_researcher", :as => "/researcher/add_co_researcher"     

  root :to => 'research_applications#index'

end
