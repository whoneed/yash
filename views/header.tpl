<%
    parent_path = request.path
    last_index = parent_path.rfind("/")
    if last_index >= 0:
        parent_path = parent_path[0:last_index]
	end
	
    if parent_path == "":
        parent_path = "/"
	end
%>
% if not request.GET.get('show_header') == 'false':
<div>
    <a href="/">Home</a>
    <a href="{{ parent_path }}">Up</a>
    <a href="/logout">Logout</a>	
    <form action="/search" method="GET" style="display:inline">
      <input type="text" name="w" size="15" />
      <input type="submit" value="Search"/>
    </form>
</div>
% end