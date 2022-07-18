# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
# payroll
# payroll
  <%if current_user.employee.nil?%>

<% else %>
  <div class="content-wrapper">
    <div class="text-center">
      <h1 style="padding:300px; color:navy;"><%= "Your Profile are alredy submited by you"%></h1><br>
        <%= link_to 'Back ', root_path %>
    </div>
  </div>
<% end %>
