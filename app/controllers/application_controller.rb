class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
    get "/" do
      { message: "Good luck with your project!" }.to_json
    end

    get '/spells' do
    spells = Spell.all
    spells.to_json
    end

    get '/wizards' do
    wizards = Wizard.all.order(:name).limit 4
    wizards.to_json
    end

    get '/wizards/:id' do
    "I will be victorious!"
    end

    get 'spells/:spell_id' do
    "What the spell does."
    end

end
