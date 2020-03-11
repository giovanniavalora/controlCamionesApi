# Generated by Django 3.0.4 on 2020-03-09 00:41

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Camiones',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('patente_camion', models.CharField(max_length=20)),
                ('nombre_chofer', models.CharField(max_length=50)),
                ('telefono_chofer', models.CharField(max_length=20)),
                ('email_chofer', models.CharField(blank=True, default='', max_length=50)),
            ],
        ),
        migrations.CreateModel(
            name='Contratista',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('razon_social', models.CharField(max_length=100)),
                ('rut', models.CharField(max_length=20)),
                ('nombre_contacto', models.CharField(max_length=50)),
                ('apellido_contacto', models.CharField(max_length=50)),
                ('telefono_contacto', models.CharField(max_length=20)),
                ('email_contacto', models.CharField(blank=True, default='', max_length=50)),
            ],
        ),
        migrations.CreateModel(
            name='Personal_controladores_frentes',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre', models.CharField(max_length=50)),
                ('apellido', models.CharField(max_length=50)),
                ('rut', models.CharField(max_length=20)),
                ('telefono', models.CharField(max_length=20)),
                ('email', models.CharField(blank=True, default='', max_length=50)),
            ],
        ),
        migrations.CreateModel(
            name='Proyectos',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre_proyecto', models.CharField(max_length=50)),
            ],
        ),
        migrations.CreateModel(
            name='Proyectos_contratistas',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('id_contratista', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='api.Contratista')),
                ('id_proyecto', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='api.Proyectos')),
            ],
        ),
        migrations.CreateModel(
            name='Punto_origen',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre_punto_origen', models.CharField(max_length=50)),
                ('id_proyecto', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='api.Proyectos')),
            ],
        ),
        migrations.CreateModel(
            name='Punto_destino',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre_punto_destino', models.CharField(max_length=50)),
                ('id_proyecto', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='api.Proyectos')),
            ],
        ),
        migrations.CreateModel(
            name='Proyectos_contratistas_camiones',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('id_camion', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='api.Camiones')),
                ('id_proyecto_contratista', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='api.Proyectos_contratistas')),
            ],
        ),
        migrations.CreateModel(
            name='Personal_controladores_frentes_proyectos',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('id_personal_controlador_frentes', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='api.Personal_controladores_frentes')),
                ('id_proyecto', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='api.Proyectos')),
            ],
        ),
        migrations.AddField(
            model_name='camiones',
            name='id_contratista',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='api.Contratista'),
        ),
    ]
