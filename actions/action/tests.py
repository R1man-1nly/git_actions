from django.test import TestCase, Client
from django.urls import reverse

import http


class IndexTest(TestCase):
    def setUp(self):
        self.client = Client()

    def test_index(self):
        response = self.client.get(reverse('index'))
        self.assertEqual(response.status_code, http.HTTPStatus.OK)
