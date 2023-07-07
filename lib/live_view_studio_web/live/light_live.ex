defmodule LiveViewStudioWeb.LightLive do
  use LiveViewStudioWeb, :live_view

  def mount(_params, _session, socket) do
    socket = assign(socket, :brightness, 10)
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    <body>
    <div class="buttonWrap">
    <button class="controlButton" phx-click="off" style={"background-color: rgba(#{255 - (@brightness)*2.55}, #{255 - (@brightness)*2.55}, #{255 - (@brightness)*2.55}, 0.5)"}>
    Off
    </button>

    <button class="controlButton" phx-click="down" style={"background-color: rgba(#{255 - (@brightness)*2.55}, #{255 - (@brightness)*2.55}, #{255 - (@brightness)*2.55}, 0.5)"}>
    Down
    </button>

    <button class="controlButton" phx-click="up" style={"background-color: rgba(#{255 - (@brightness)*2.55}, #{255 - (@brightness)*2.55}, #{255 - (@brightness)*2.55}, 0.5)"}>
    Up
    </button>

    <button class="controlButton" phx-click="on" style={"background-color: rgba(#{255 - (@brightness)*2.55}, #{255 - (@brightness)*2.55}, #{255 - (@brightness)*2.55}, 0.5)"}>
    On
    </button>
    </div>
    </body>
    """
  end

  def handle_event("on", _, socket) do
    socket = assign(socket, :brightness, 100)
    {:noreply, socket}
  end

  def handle_event("off", _, socket) do
    socket = assign(socket, :brightness, 0)
    {:noreply, socket}
  end

  def handle_event("down", _, socket) do
    socket = update(socket, :brightness, &max(&1 - 10, 0))
    {:noreply, socket}
  end

  def handle_event("up", _, socket) do
    socket = update(socket, :brightness, &min(&1 + 10, 100))
    {:noreply, socket}
  end

end
