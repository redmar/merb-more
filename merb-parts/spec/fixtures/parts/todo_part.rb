class TodoPart < Merb::PartController
  self._template_root = File.expand_path(File.join(File.dirname(__FILE__), "views"))
  
  before :load_todos
  
  def list
    render
  end
  
  def one
    render :list, :layout => false
  end
  
  def load_todos
    @todos = ["Do this", "Do that", 'Do the other thing']
  end
  
  def formatted_output
    render
  end
  
  def part_with_params
    render
  end
  
end