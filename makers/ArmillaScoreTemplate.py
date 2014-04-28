# -*- encoding: utf-8 -*-
from abjad import *
from consort import makers


class ArmillaScoreTemplate(makers.ConsortObject):
    r'''A score template.

    ::

        >>> from armilla import makers
        >>> template = makers.ArmillaScoreTemplate()
        >>> score = template()

    '''

    ### SPECIAL METHODS ###

    def __call__(self):

        viola_one_staff_group = self._make_string_performer_staff_group(
            name='One',
            )

        viola_two_staff_group = self._make_string_performer_staff_group(
            name='Two',
            )

        staff_group = scoretools.StaffGroup(
            [
                viola_one_staff_group,
                viola_two_staff_group,
                ],
            name='Armilla Staff Group',
            )

        time_signature_context = scoretools.Context(
            name='TimeSignatureContext',
            context_name='TimeSignatureContext',
            )

        score = scoretools.Score(
            [
                time_signature_context,
                staff_group,
                ],
            name='Armilla Score',
            )

    ### PRIVATE METHODS ###

    def _make_string_performer_staff_group(self, name=None):

        viola_bowing_voice = scoretools.Voice(
            context_name='BowingVoice',
            name='Viola {} Bowing Voice'.format(name),
            )

        viola_bowing_staff = scoretools.Staff(
            [
                viola_bowing_voice,
                ],
            context_name='BowingStaff',
            name='Viola {} Bowing Staff'.format(name),
            )

        viola_dynamics = scoretools.Voice(
            context_name='Dynamics',
            name='Viola {} Dynamics'.format(name),
            )

        viola_fingering_voice = scoretools.Voice(
            context_name='FingeringVoice',
            name='Viola {} Fingering Voice'.format(name),
            )

        viola_fingering_staff = scoretools.Staff(
            [
                viola_fingering_voice,
                ],
            context_name='FingeringStaff',
            name='Viola {} Fingering Staff'.format(name),
            )

        viola_staff_group = scoretools.StaffGroup(
            [
                viola_bowing_staff,
                viola_dynamics,
                viola_fingering_staff,
                ],
            context_name='StringPerformerStaffGroup',
            name='Viola {} Staff Group'.format(name),
            )

        return viola_staff_group
