class UserService:
    def __init__(self, database):
        self.database = database

    def get_user(self, user_id):
        return self.database.get_user(user_id)

    def get_user_details(self, user_id, profile_service):
        user = self.database.get_user(user_id)
        profile = profile_service.get_profile(user_id)
        return {**user, **profile}
