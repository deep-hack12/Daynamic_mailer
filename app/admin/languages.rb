ActiveAdmin.register Language do

    permitted = [:language, :status]
    form do |f|
        f.inputs do
            f.input :language
            f.input :status, as: :select, collection: ['active', 'inactive']
        end
        f.actions
    end
end
