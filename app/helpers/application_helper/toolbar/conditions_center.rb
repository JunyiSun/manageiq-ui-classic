class ApplicationHelper::Toolbar::ConditionsCenter < ApplicationHelper::Toolbar::Basic
  button_group('condition_vmdb', [
    select(
      :condition_vmdb_choice,
      nil,
      t = N_('Configuration'),
      t,
      :items => [
        button(
          :condition_new,
          'pficon pficon-add-circle-o fa-lg',
          t = proc do
            if @sb[:folder].upcase == "VM"
              _('Add a New VM Condition')
            else
              _('Add a New %{condition_type} Condition') % {
                :condition_type => ui_lookup(:model => @sb[:folder].camelize)
              }
            end
          end,
          t,
          :klass => ApplicationHelper::Button::ButtonNewDiscover),
      ]
    ),
  ])
end
