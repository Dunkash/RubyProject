class HomeController < ApplicationController

  def index
    @sessions = Session.find_by_sql("SELECT NAME,USER_ID from SESSIONS S JOIN USER_SESSIONS US ON US.SESSION_ID = S.ID")
  end

  def session
    t = params[:id].to_i
    @name = Session.find_by_sql(["SELECT NAME from SESSIONS S JOIN USER_SESSIONS US ON US.SESSION_ID = S.ID WHERE S.ID=?",t])
  end


end