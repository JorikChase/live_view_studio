defmodule LiveViewStudioWeb.NavLive do
  use LiveViewStudioWeb, :live_view

  def mount(_params, _session, socket) do
    socket = assign(socket, :shown, 3)
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    <body>
    <nav style={"bottom:#{100 - (@shown)}vh; color: rgba(255, 255, 255, #{(@shown)/100});"}>

      <div class="navHero">
        <h3>MY JSME <span>FLASHTONES</span></h3>
        <p>Flashtones znamená okázalé tóny. Tóny dělají hudbu krásnou v její různorodosti a originalitě, to samé vytváří u módy a oblékání. Co říkáte, odrbaný hit nebo osobitý song? Uniforma nebo Flashtones?</p>
        <a><span>click me</span></a>
      </div>
      <div class="navMap">
      <div>deti</div>
      <div>obleceni</div>
      <div id="navMapColumn">
      <div>eventy</div>
      <div>studio</div>
      <div>eshop</div></div>
      </div>
      <div></div>
    </nav>
    <button class="controlButton" phx-click="up" style={"background-color: rgba(#{255 - (@shown)*2.55}, #{255 - (@shown)*2.55}, #{255 - (@shown)*2.55}, 0.5)"}>
    up
    </button>

    <button class="controlButton" phx-click="down" style={"background-color: rgba(#{255 - (@shown)*2.55}, #{255 - (@shown)*2.55}, #{255 - (@shown)*2.55}, 0.5)"}>
    down
    </button>
    </body>
    """
  end

  def handle_event("down", _, socket) do
    socket = assign(socket, :shown, 100)
    {:noreply, socket}
  end

  def handle_event("up", _, socket) do
    socket = assign(socket, :shown, 3)
    {:noreply, socket}
  end

  def handle_event("down", _, socket) do
    socket = update(socket, :shown, &max(&1 - 10, 0))
    {:noreply, socket}
  end

  def handle_event("up", _, socket) do
    socket = update(socket, :shown, &min(&1 + 10, 100))
    {:noreply, socket}
  end

end
