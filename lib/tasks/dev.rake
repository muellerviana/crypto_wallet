namespace :dev do
  desc "Configura o ambinente de desenvolvimento"
  task setup: :environment do
    if Rails.env.development?
      spinner = TTY::Spinner.new("[:spinner] Deleting data-base")
      spinner.auto_spin
      %x(rails db:drop)
      spinner.success('(Done!)')
            
      spinner = TTY::Spinner.new("[:spinner] Creating new data-base")
      spinner.auto_spin
      %x( db:create )
      spinner.success('(Done!)')
           
      spinner = TTY::Spinner.new("[:spinner] Executing migrations")
      spinner.auto_spin
      %x(db:migrate )
      spinner.success('(Done!)')

      spinner = TTY::Spinner.new("[:spinner] Executind seed")
      spinner.auto_spin
      %x(db:seed)
      spinner.success('(Done!)')
            
    else
      puts "Você não está no ambiente de desenvolvimento!"
    end 
  end

end
