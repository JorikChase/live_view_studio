defmodule LiveViewStudioWeb.FlashtonesLive do
  use Phoenix.LiveView

  def mount(_params, _session, socket) do
    socket = assign(socket, :shown, 3)
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""

    <!--<%= live_render(@socket, "nav_live_component.html") %>-->

    """
  end

end
