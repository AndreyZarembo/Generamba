module Generamba::CLI
  class Template < Thor

    desc 'install', 'Installs all the templates specified in the Rambafile from the current directory'
    def install
      does_rambafile_exist = Dir[RAMBAFILE_NAME].count > 0

      if (does_rambafile_exist == false)
        puts('Rambafile not found! Run `generamba setup` in the working directory instead!'.red)
        return
      end

      template_processor = Generamba::TemplateProcessor.new
      template_processor.install_templates
    end
  end
end