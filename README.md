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















------------ Accept Reject form---------


 <%= form_for(leave_management_accept_path(lm), remote: true, data: { confirm: "You sure?"}) do |fa| %>
            <%= fa.hidden_field :status, :value => 1 %>
            <th><%= fa.submit "Approve", class: "btn btn-large btn-success", onclick: "lm_status.value = '1'" %></th>
          <% end %>
          <%= form_for(leave_management_decline_path(lm), remote: true, data: { confirm: "You sure?"}) do |fa| %>
            <%= fa.hidden_field :status, :value => 2 %>
            <th> <%= fa.submit "Reject", class: "btn btn-large btn-danger", onclick: "lm_status.value = '2'" %></th>
          <% end %>
--------------------------
















 <%=form_tag(@attandance,method: :post) do %>
      <center><legend>Mark Your Attandance</legend></center>
       <%if @attandance.in_time == nil%>
        <label>Check In Button:</label><br>
        <%= hidden_field_tag :in_time,Time.new %>
        <input type="submit" value="In Time">
        <%else%>
         <%= hidden_field_tag :out_time,Time.new %>
        <label>Check out Button:</label><br>
        <input type="submit" value=" Out Time">
        <%end%>
      <%end%># Payroll-Management-System
# Payroll-Management-System
# Payroll-Management-System
