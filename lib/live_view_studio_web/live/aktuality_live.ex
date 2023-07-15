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
end
