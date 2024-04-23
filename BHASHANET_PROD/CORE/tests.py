from django.test import TestCase

# Create your tests here.
from django.test import TestCase
from django.urls import reverse


class ViewsTestCase(TestCase):
    def test_index_loads_properly(self):
        """The index page loads properly"""
        response = self.client.get('127.0.0.1:8000')
        self.assertEqual(response.status_code, 200)

    def test_best_practice_loads_properly(self):
        response = self.client.get('127.0.0.1:8000/bestpractices')
        self.assertEqual(response.status_code, 200)

    def test_url_accessible_by_name(self):
        response = self.client.get(reverse('bestpractices'))
        self.assertEqual(response.status_code, 200)

    def test_view_uses_correct_template(self):
        response = self.client.get(reverse('bestpractices'))
        self.assertEqual(response.status_code, 200)
        self.assertTemplateUsed(response, 'core/best_practices.html')

    def test_documentPage_loads_properly(self):
        response = self.client.get(reverse('documentPage'))
        self.assertEqual(response.status_code, 200)

