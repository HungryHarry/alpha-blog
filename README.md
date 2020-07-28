# README

Previous code for index.html

<h1>Index article view</h1>

  <table>
    <thead>
      <tr>
        <th>Title</th>
        <th>Description</th>
        <th colspan="3">Actions</th>
      </tr>
    </thead>
    <tbody>
      <% @all_articles.each do |article| %>
        <tr>
          <td><%= article.title %></td>
          <td><%= article.description %></td>
          <td><%= link_to 'Show', article_path(article.id)%></td>
          <td><%= link_to 'Edit', edit_article_path(article.id)%></td>
          <td><%= link_to 'Delete', article_path(article.id), method: :DELETE, data: {confirm: "Are you sure?"} %> </td>
        </tr>
      <% end %>
    </tbody>
  </table>
  <br>
  <%= link_to 'Create new Article', new_article_path %> |
  <%= link_to 'Home', root_path%> 
