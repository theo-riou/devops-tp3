from user_service import UserService

class DatabaseStub:
    def get_user(self, user_id):
        return {"id": user_id, "name": "Théo Riou"}

class ProfileServiceStub:
    def get_profile(self, user_id):
        return {"profile_pic": "link_to_pic", "bio": "Bio de Théo"}

def test_get_user_details():
    database_stub = DatabaseStub()
    profile_service_stub = ProfileServiceStub()

    user_service = UserService(database_stub)
    user_details = user_service.get_user_details(1, profile_service_stub)

    assert user_details["name"] == "Théo Riou"
    assert user_details["profile_pic"] == "link_to_pic"
    assert user_details["bio"] == "Bio de Théo"
