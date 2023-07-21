defmodule LiveViewStudioWeb.LokalitaMapLive do
  use LiveViewStudioWeb, :live_view

  def mount(_params, _session, socket) do
    socket = assign(socket, :shown, 3)
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    <iframe src="https://www.google.com/maps/d/u/0/embed?mid=1CcaEDYZ4A5xQ0sTvV1ljmHGzdSdy2kI&ehbc=2E312F" width="640" height="480" disableDefaultUI: true></iframe>
    """
  end
end
