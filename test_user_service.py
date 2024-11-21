from unittest.mock import Mock
from user_service import UserService

def test_get_user():
    database_mock = Mock()
    database_mock.get_user.return_value = {"id": 1, "name": "Théo Riou"}

    user_service = UserService(database_mock)
    user = user_service.get_user(1)

    assert user["name"] == "Théo Riou"
