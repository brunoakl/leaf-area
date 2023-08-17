#Macro no ImageJ
##Autores: Bruno Machado Ferreira e Ernani Neto

Uso da macro:
- Abra o ImageJ.
- Em File, clique em Open, selecione uma das imagens fornecidas e clique em Abrir.
- Em Plugins, clique em Macros e depois em Run.
- Escolha o arquivo MarcoAreaFolha.ijm e clique em Abrir.
- Aguarde o resultado.

Funcionamento:
- A imagem escolhida será convertida para a escala 1000x666 para manter um padrão de medidas.
- Usa-se a fita vermelha de 5cm como referência, pois todas as imagens serão dimensionadas ao mesmo tamanho.
- A imagem será cortada, focando apenas a folha.
- A imagem será convertida para B&W. O verde se tornará preto e o fundo da figura será branco.
- Converte o espectro RGB para 8-bit.
- Alguns espaços vazios serão preenchidos para não afetar a precisão da medida.
- Por final, calcula a área da parte preta da imagem.

Resultado esperado:
- Após o processamento, haverão duas janelas. Uma com a imagem redimensionada e convertida para preto/branco e outra com a medida da área. 
- Ao tentar fechar cada uma das janelas, o ImageJ perguntará se você quer salvar as medidas e as mudanças feitas na imagem original.
