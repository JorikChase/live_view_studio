defmodule LiveViewStudioWeb.AktualityLive do
  use LiveViewStudioWeb, :live_view

  def mount(_params, _session, socket) do
    socket = assign(socket, :shown, 3)
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    <grid-container class="aktualityGrid">
    <grid-item>
    <a href="###" class="aktualityItem">
    <img src="###">
    </a>
    </grid-item>
    <grid-item>
    <a href="###" class="aktualityItem">
    <img src="###">
    </a>
    </grid-item>
    <grid-item>
    <a href="###" class="aktualityItem">
    <img src="###">
    </a>
    </grid-item>
    <grid-item>
    <a href="###" class="aktualityItem">
    <img src="###">
    </a>
    </grid-item>
    <grid-item>
    <a href="###" class="aktualityItem">
    <img src="###">
    </a>
    </grid-item>
    </grid-container>
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
