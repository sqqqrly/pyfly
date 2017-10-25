from app import views
import pytest

@pytest.fixture
def app():
    app = create_app()
    return app

def test_foo():
    assert True

def test_bar():
    assert False
