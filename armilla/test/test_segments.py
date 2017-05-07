# -*- encoding: utf-8 -*-
import json
import mock
import pathlib
import pytest
from abjad.tools import commandlinetools
from abjad.tools import systemtools


test_path = pathlib.Path(__file__).parent
segments_path = (test_path / '..' / 'segments').resolve()
metadata_path = segments_path / 'metadata.json'
with metadata_path.open('r') as file_pointer:
    metadata = json.loads(file_pointer.read())
segment_names = metadata.get('segments', [])


@pytest.mark.parametrize('segment_name', segment_names)
def test_segments(segment_name):
    with systemtools.TemporaryDirectoryChange(str(test_path)):
        script = commandlinetools.ManageSegmentScript()
        command = ['--illustrate', segment_name]
        with mock.patch('abjad.systemtools.IOManager.open_file'):
            script(command)
