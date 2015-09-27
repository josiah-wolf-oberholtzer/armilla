# -*- encoding: utf-8 -*-
import os
import pytest
import ide
import armilla
from abjad.tools import systemtools


configuration = ide.tools.idetools.AbjadIDEConfiguration()
boilerplate_path = configuration.abjad_ide_boilerplate_directory
boilerplate_path = os.path.join(
    boilerplate_path,
    '__illustrate_material__.py',
    )

materials_path = os.path.join(armilla.__path__[0], 'materials')
directory_names = os.listdir(materials_path)
directory_names = [_ for _ in directory_names if not _.startswith(('.', '_'))]

material_paths = [os.path.join(materials_path, _) for _ in directory_names]
material_paths = [_ for _ in material_paths if os.path.isdir(_)]


@pytest.mark.parametrize('material_path', material_paths)
def test_materials_03(material_path):
    r'''Interprets material packages.
    '''
    definition_file_path = os.path.join(material_path, 'definition.py')
    command = 'python {}'.format(definition_file_path)
    with systemtools.Timer(print_continuously_from_background=True):
        exit_status = systemtools.IOManager.spawn_subprocess(command)
    assert exit_status == 0