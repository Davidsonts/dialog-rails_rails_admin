RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  ## == CancanCan ==
  # config.authorize_with :cancancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true
  config.default_items_per_page = 25

  config.model User do
    list do
      exclude_fields :created_at, :updated_at
    end

    create do
      field  :name do
        required true
      end
      field  :year do
        required true
      end
      field  :sex do
        required true
      end
      field  :city do
        required true
      end
      field  :uf do
        required true
      end
    end

    edit do
      field  :name do
        required true
      end
      field  :year do
        required true
      end
      field  :sex do
        required true
      end
      field  :city do
        required true
      end
      field  :uf do
        required true
      end
    end
  end

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end
