defmodule LiveViewStudioWeb.NavLive do
  use LiveViewStudioWeb, :live_view

  @initial_shown 3
  @max_shown 100

  def mount(_params, _session, socket) do
    socket = assign(socket, shown: @initial_shown)
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    <nav>
      <button phx-click="toggle_shown" class="nav" style={"bottom:#{100 - @shown}vh; color: rgba(255, 255, 255, #{@shown / 100});"}>

      </button>

    <!-- Second Section -->
    <section class="z-50 bg-transparent py-8 text-white">
      <div class="z-50 container mx-auto px-4">
        <div class="z-50 grid grid-cols-1 md:grid-cols-3 gap-4">
          <!-- Column 1 -->
          <div class="z-50 bg-transparent-200 p-6 rounded-lg">
            <h3 class="z-50 text-xl font-bold mb-4">Column 1 Heading</h3>
            <a href="#" class="z-50 block text-white-600 hover:text-white-800"><span class="font-bold"> Link : </span> 1</a>
            <a href="#" class="z-50 block text-white-600 hover:text-white-800"><span class="font-bold"> Link : </span> 2</a>
            <a href="#" class="z-50 block text-white-600 hover:text-white-800"><span class="font-bold"> Link : </span> 3</a>
            <a href="#" class="z-50 block text-white-600 hover:text-white-800"><span class="font-bold"> Link : </span> 4</a>
          </div>

          <!-- Column 2 -->
          <div class="z-50 bg-transparent-200 p-6 rounded-lg">
            <h3 class="z-50 text-xl font-bold mb-4">Column 2 Heading</h3>
            <a href="#" class="z-50 block text-white-600 hover:text-white-800"><span class="font-bold"> Link : </span> 1</a>
            <a href="#" class="z-50 block text-white-600 hover:text-white-800"><span class="font-bold"> Link : </span> 2</a>
            <a href="#" class="z-50 block text-white-600 hover:text-white-800"><span class="font-bold"> Link : </span> 3</a>
            <a href="#" class="z-50 block text-white-600 hover:text-white-800"><span class="font-bold"> Link : </span> 4</a>
          </div>

          <!-- Column 3 -->
          <div class="z-50 bg-transparent-200 p-6 rounded-lg">
            <h3 class="z-50 text-xl font-bold mb-4">Column 3 Heading</h3>
            <a href="#" class="z-50 block text-white-600 hover:text-white-800"><span class="font-bold"> Link : </span> 1</a>
            <a href="#" class="z-50 block text-white-600 hover:text-white-800"><span class="font-bold"> Link : </span> 2</a>
            <a href="#" class="z-50 block text-white-600 hover:text-white-800"><span class="font-bold"> Link : </span> 3</a>
            <a href="#" class="z-50 block text-white-600 hover:text-white-800"><span class="font-bold"> Link : </span> 4</a>
          </div>
        </div>
      </div>
    </section>

    <!-- Third Section -->
    <section class="z-50 bg-transparent-100 py-8">
      <div class="z-50 container mx-auto px-4">
        <div class="z-50 grid grid-cols-1 md:grid-cols-3 gap-4">
          <!-- Link 1 -->
          <a href="#" class="z-50 block bg-transparent rounded-lg p-6">
            <img src="image1.jpg" alt="Image 1" class="z-50 mb-4">
            <h4 class="z-50 text-white text-xl font-bold mb-2">Image 1</h4>
            <p class="z-50 text-white-600">Short description of Image 1.</p>
          </a>

          <!-- Link 2 -->
          <a href="#" class="z-50 block bg-transparent rounded-lg p-6">
            <img src="image2.jpg" alt="Image 2" class="z-50 mb-4">
            <h4 class="z-50 text-white text-xl font-bold mb-2">Image 2</h4>
            <p class="z-50 text-white-600">Short description of Image 2.</p>
          </a>

          <!-- Link 3 -->
          <a href="#" class="z-50 block bg-transparent rounded-lg p-6">
            <img src="image3.jpg" alt="Image 3" class="z-50 mb-4">
            <h4 class="z-50 text-white text-xl font-bold mb-2">Image 3</h4>
            <p class="z-50 text-white-600">Short description of Image 3.</p>
          </a>
        </div>
      </div>
    </section>
    </nav>
    """
  end

  def handle_event("toggle_shown", _, socket) do
    new_shown = if socket.assigns.shown == @initial_shown, do: @max_shown, else: @initial_shown
    {:noreply, assign(socket, shown: new_shown)}
  end
end
