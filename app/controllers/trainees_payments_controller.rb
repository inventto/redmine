class TraineesPaymentsController < ApplicationController
  def index
    @ano ||= Time.now.year
    @mes ||= Time.now.month

    @users = {
      4=>{:hora=>14.0, :ciee=>550}, #Lucão
      22=>{:hora=>18.5, :ciee=>0}, #Tafarel
      27=>{:hora=>18.0, :ciee=>0},   #Mitrut
      32=>{:hora=>18.5, :ciee=>0}  #Rafagnin
    }

    @horas = {}
    time_entries = TimeEntry.on_project(Project.find(10), true).spent_between(Time.mktime(@ano,@mes-1,1), Time.mktime(@ano,@mes,1) - 1.day)
    time_entries.group_by{|t|t.user_id}.each{|a,c| @horas[a] = c.sum{|k| k.hours}}
  end


end
