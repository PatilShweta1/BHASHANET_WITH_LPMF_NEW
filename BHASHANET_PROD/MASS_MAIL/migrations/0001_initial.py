# Generated by Django 4.1.7 on 2024-04-22 06:25

import django.core.validators
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):
    initial = True

    dependencies = []

    operations = [
        migrations.CreateModel(
            name="EmailSend",
            fields=[
                (
                    "id",
                    models.BigAutoField(
                        auto_created=True,
                        primary_key=True,
                        serialize=False,
                        verbose_name="ID",
                    ),
                ),
                ("email_body", models.TextField()),
                ("email_subject", models.CharField(max_length=500)),
                ("created_date", models.DateField(auto_now_add=True)),
                ("last_updated_date", models.DateField(auto_now=True)),
            ],
            options={
                "verbose_name_plural": "Email Send",
                "db_table": "Email_Send",
            },
        ),
        migrations.CreateModel(
            name="EmailAttachment",
            fields=[
                (
                    "id",
                    models.BigAutoField(
                        auto_created=True,
                        primary_key=True,
                        serialize=False,
                        verbose_name="ID",
                    ),
                ),
                (
                    "email_attachment",
                    models.FileField(
                        blank=True,
                        null=True,
                        upload_to="mass_mail/email_attachment",
                        validators=[
                            django.core.validators.FileExtensionValidator(
                                [
                                    "pdf",
                                    "zip",
                                    "csv",
                                    "xls",
                                    "ppt",
                                    "html",
                                    "jpg",
                                    "png",
                                    "txt",
                                ]
                            )
                        ],
                    ),
                ),
                (
                    "email_send",
                    models.ForeignKey(
                        on_delete=django.db.models.deletion.CASCADE,
                        to="MASS_MAIL.emailsend",
                    ),
                ),
            ],
            options={
                "verbose_name_plural": "Email Attachment",
                "db_table": "Email_Attachment",
            },
        ),
    ]