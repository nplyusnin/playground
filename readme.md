# Playground

Тестим разные алгоритмы написанные на руби, на разном железе

## Запуск тестов
```bash
rspec spec
```

## Запуск бенчмарка
```bash
ruby benchmark.rb
```

## Результаты тестов
M1 Pro
```
                 user     system      total        real
Binary search  0.004736   0.014359   0.019095 (0.029090)
Binary search  0.000014   0.000013   0.000027 (0.000026)
Search         3.394905   0.077312   3.472217 (3.475295)
Search         0.105732   0.000867   0.106599 (0.106604)
```

M1
```
                 user     system      total        real
Binary search  0.004208   0.013070   0.017278 (0.023221)
Binary search  0.000013   0.000015   0.000028 (0.000028)
Search         3.415103   0.049744   3.464847 (3.466101)
Search         0.105820   0.001005   0.106825 (0.106829)
```