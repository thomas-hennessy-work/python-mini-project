from unittest.mock import patch
from flask import url_for, jsonify
from flask_testing import TestCase

from frontEndApp import app

class TestBase(TestCase):
    def create_app(self):
        return app

class TestProject(TestBase):
    def testCow(self):
        with patch("requests.get") as g:
            with patch("requests.post") as h:
                g.return_value.json.return_value = ({'data':'cow'})
                h.return_value.json.return_value = ({'data':'moo'})

                responce = self.client.get(url_for('index'))
                self.assertIn(b'the cow goes moo', responce.data)

    def testDog(self):
        with patch("requests.get") as g:
            with patch("requests.post") as h:
                g.return_value.json.return_value = ({'data':'dog'})
                h.return_value.json.return_value = ({'data':'woof'})

                responce = self.client.get(url_for('index'))
                self.assertIn(b'the dog goes woof', responce.data)

    def testCat(self):
        with patch("requests.get") as g:
            with patch("requests.post") as h:
                g.return_value.json.return_value = ({'data':'cat'})
                h.return_value.json.return_value = ({'data':'meow'})

                responce = self.client.get(url_for('index'))
                self.assertIn(b'the cat goes meow', responce.data)

    def testSheep(self):
        with patch("requests.get") as g:
            with patch("requests.post") as h:
                g.return_value.json.return_value = ({'data':'sheep'})
                h.return_value.json.return_value = ({'data':'baa'})

                responce = self.client.get(url_for('index'))
                self.assertIn(b'the sheep goes baa', responce.data)

    def testTom(self):
        with patch("requests.get") as g:
            with patch("requests.post") as h:
                g.return_value.json.return_value = ({'data':'tom'})
                h.return_value.json.return_value = ({'data':'AAAAAAAAAAA'})

                responce = self.client.get(url_for('index'))
                self.assertIn(b'the tom goes AAAAAAAAAAA', responce.data)