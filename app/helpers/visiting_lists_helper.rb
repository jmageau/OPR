module VisitingListsHelper
  def getVisitingList(current_user)
    # TODO: Verify when customer is added
    VisitingList.where(customer_id: current_user).first
  end
end
