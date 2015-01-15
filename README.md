Chian-Zero-Padding
====

## ����͉�

�n�Ԃ̖{��(�e��)��4���A�}��(�q�ԁA�x��)��3���ɂȂ�悤�Ƀ[���p�f�B���O(�[������)���܂��B

Ex. 100-1 �� 0100-001  
    200   �� 0200-000

�ꕔ�̊��Œn�Ԗ����n�ԏ��ɕ��΂Ȃ����Ƃ�����̂Ń[���p�f�B���O���邱�Ƃŏ����ǂ����Ԃ悤�ɂ��܂��B

## �g����

PowerShell�X�N���v�g�ł��B�Z�L�����e�B�ݒ�ŏ��������̃X�N���v�g�����s�\�Ȃ悤�ɐݒ�����Ă����Ă��������B

�K���ȃf�B���N�g����Chian-Zero-Padding.ps1��u���AChian-Zero-Padding.ps1��ǂݍ��݂܂��B

```ps1
PS> . Chian-Zero-Padding.ps1
```

```ps1
PS> Chian-Zero-Padding 100-1
```

�[���p�f�B���O���ꂽ�n�ԕ����񂪕\������܂��B

```
0100-001
```

���̃X�N���v�g���g����PDF�t�@�C������ύX����ꍇ�ɂ͉��L�̂悤�ɂ��܂��B

```ps1
PS> $ex = ".pdf" ; Get-ChildItem "*$ex" -Name | ForEach-Object { $tmp = (Chiban-Zero-Padding $_.Replace($ex,"")) ; Rename-Item $_ $tmp$ex }
```

�������C�i�[���Ƃ킩��ɂ����ł��ˁB

## ����

�}�Ԃ̎}�Ԃ�����n��(�Ⴆ�΁u500-1-2�v)��A�������̒n�ԁA�Y�����̂���n��(�Ⴆ�΁u��600-1�v)�Ȃǂł͈Ӑ}�����`�œ��삵�Ȃ��\��������܂��B

----
2014-10-31 Hiroyuki Kimura
