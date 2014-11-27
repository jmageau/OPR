module VisitingListsHelper
  def getVisitingList(current_user)
    # TODO: Verify when customer is added
    @visiting_list = visiting_list_path(current_user.visiting_list)
  end
end
