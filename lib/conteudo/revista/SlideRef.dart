import 'package:flutter/material.dart';

class SlideRef extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        AppBar(
          title: Center(
            child: Text(
              "REFERÊNCIAS",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        const SizedBox(height: 30),
        Text(
            'ALMEIDA, Carlos Alberto Nogueira de; PIMENTEL, Carolina; FONSECA, '
            'Eduardo Borges da. Além da nutrição: O impacto da nutrição materna na '
            'saúde das futuras gerações. 1. ed. São Paulo: Luiz Martins Editorial '
            'Ltda, 2019. Disponível em: <http://abran.org.br/alem-da-nutricaobayer/>. '
            'Acesso em: 09 nov. 2020.\n\n'
            'AMARANTE, Suely. A importância do vínculo materno no desenvolvimento '
            'infantil. Instituto nacional da mulher, da criança e do adolescente, '
            'Rio de Janeiro, s.d. Disponível em: '
            '<http://www.iff.fiocruz.br/index.php/8-noticias/330-aimportanciadovinculomaterno>. '
            'Acesso em: 17 de maio de 2021.\n\n'
            'BODE, Lars. Human milk oligosaccharides: every baby needs a sugar mama. '
            'Glucobiology, Oxford, v.22,9, pp. 1147-1162, September, 2012.\n\n'
            'BOTELHO, Valéria Cristina Soares Furtado. Guia com orientações nutricionais '
            'para gestantes e puérperas sobre covid-19: segurança alimentar em tempos '
            'de pandemia por coronavírus. Universidade federal do estado do rio de '
            'janeiro -UNIRIO, Rio de Janeiro, 1. ed., jun. 2020. Disponível em: '
            '<http://www.unirio.br/proreitoriadeextensaoecultura/centraldeconteudos/material-'
            'didatico/guia-orientacao-nutriconal-gestanteepuerpera-sobre-covid-19_prof-valeria'
            '-c-s-furtadobotelho_junho2020.pdf>. Acesso em: 9 nov. 2020.\n\n'
            'BRASIL. Ministério da Saúde. Coordenação Geral de Alimentação e Nutrição. '
            'Alimentação saudável para gestantes: siga os dez passos. Brasília, '
            'DF: 2013a. Disponível em: <http://189.28.128.100/nutricao/docs/geral/'
            '10passosGestantes.pdf>. Acesso em: 10 set. 2020.\n\n'
            'BRASIL. Ministério da Saúde. Secretaria de Atenção Primária à Saúde. '
            'Perguntas Frequentes – Amamentação e COVID-19. Maio, 2020.\n\n'
            'CARVALHO, M. (17 de mai de 2021). 1 vídeo (9 min) Leite Materno - '
            'Como Armazenar. O Pediatra Responde. Fonte: Publicado pelo canal O '
            'Pediatra Responde: Leite Materno - Como Armazenar. O Pediatra Responde '
            'Acesso em: 17 de maio de 2021.\n\n'
            'CIENTÍFICA UNIVIÇOSA - Volume3 - n. 1 - Viçosa-MG, 2013- p. 205 - 210. '
            'Disponível em: https://academico.univicosa.com.br/revista/index.php/RevistaSimpac'
            '/article/view/219/380. Acesso em : 17/05/2021.\n\n'
            'DE FLÁVIA, et al. Educação Em Saúde No Processo de Posicionamento Da '
            'Mãe Com O Bebê Durante a Amamentação. Vol. 16, não. 2, 2017, pp. '
            '242-252. Acessado em 26 de abril de 2021.\n\n'
            'DONATO, F. et al. Universidade Federal De Minas Gerais Curso De '
            'Especialização Estratégia Saúde Da Família Aleitamento Materno: '
            'Posicionamento E Pega Adequada Do Recém-Nascido, 2014.\n\n'
            'FREITAS, Elisângela da Silva de et al. Recomendações Nutricionais na '
            'Gestação. Revista Destaques Acadêmicos, [S.l.], v. 2, n. 3, maio 2011. '
            'Disponível em: <http://univates.br/revistas/index.php/destaques/article/view/80/78>. '
            'Acesso em: 09 nov. 2020.\n\n'
            'HASSIOTOU, Foteini et al. Maternal and infant infections stimulate '
            'a rapid leukocyte response in breastmilk. Clinical & Translational '
            'Immunology, Australia, v. 2,4, e. 3, April, 2013.\n\n'
            'Hospital e maternidade Santa Maria. Amamentação. Disponível em: https://maternidadesa\n\n'
            'https://repositorio.ufmg.br/bitstream/1843/BUBD9D2J5X/1/trabalho_conclusao_de_curso.pdf\n\n'
            'https://www.agenciabrasilia.df.gov.br/2020/08/09/entenda-a-importancia-'
            'dos-bancos-de-leite-humano/#:~:text=%E2%80%9CA%20principal%20fun%C3%A'
            '7%C3%A3o%20dos%20bancos,e%20promo%C3%A7%C3%A3o%20do%20aleitamento%20materno\n\n'
            'https://www.inca.gov.br/alimentacao/amamentacao\n\n'
            'https://www.tuasaude.com/como-armazenar-o-leite-materno/#:~:text='
            'Para%20armazenar%20o%20leite%20materno,na%20geladeira%2C%20congelador%20ou%20freezer\n\n'
            'Imagem: https://www.maesdepeito.com.br/\n\n'
            'LEOPERCIO, Waldir; GIGLIOTTI, Analice. Tabagismo e suas peculiaridades '
            'durante a gestação: uma revisão crítica. J. bras.pneumol., São Paulo, '
            'v. 30, n. 2, p. 176-185, abr. 2004. Disponível em: '
            '<http://www.scielo.br/scielo.php?script=sci_arttext&pid=S1806-'
            '37132004000200016&lng=en&nrm=iso>. Acesso em: 09 nov. 2020.\n\n'
            'LUCAS, F. D. Aleitamento materno: posicionamento e pega adequada do '
            'recém-nascido. 2014. 26 f. Trabalho de Conclusão de Curso '
            '(Especialização em Atenção Básica em Saúde da Família) – Universidade '
            'Federal de Minas Gerais, Lagoa Santa, 2014.\n\n'
            'MARTINS, Maria Zilda Oliveira & SANTANA, Licia Santos. Benefícios '
            'da amamentação para saúde materna. Interfaces Científicas, Saúde e '
            'Ambiente, Aracaju vol.1, n. 3, p. 87-97, junho de 2013. Disponível '
            'em: <https://periodicos.set.edu.br/saude/article/view/763/443>. '
            'Acesso em 05 de maio de 2021.\n\n'
            'MENEZES, Rakelen Ribeiro, COELHO, Adriana Serrão & LOBO, Maria Raika '
            'Guimarães. A importância da amamentação na formação de vínculos '
            'afetivos saudáveis entre mamãe/bebê. BIUS – Boletim informativo '
            'unimotrisaúde em sociogerontologia, vol 12, n. 5, setembro 2019. '
            'Disponível em: <https://periodicos.ufam.edu.br/index.php/BIUS/article/view/6191>. '
            'Acesso em 06 de maio de 2021.\n\n'
            'MINISTÉRIO DA SAÚDE. Saúde da criança. Aleitamento materno e alimentação '
            'complementar. Brasília, 2009. Disponível em: Saúde da criança: '
            'nutrição infantil: aleitamento materno e alimentação complementar '
            '(saude.gov.br). Acesso em: 10 de mai. de 2021.\n\n'
            'MORENO, Cirlei Célia Gomes Sanchez, REA, Marina Ferreira, FILIPE, '
            'Elvira Ventura. Mães HIV positivo e a não-amamentação. Revista '
            'Brasileira de Saúde Materno Infantil, Recife, v. 6,2, pp. 199-208, Junho, 2016.\n\n'
            'NICK, M.S. A IMPORTÂNCIA DO ALEITAMENTO MATERNO EXCLUSIVO NOS '
            'PRIMEIROS SEIS MESES DE VIDA PARA A PROMOÇÃO DA SAÚDE DA CRIANÇA. '
            'Universidade Federal de MInas Gerias. Teófilo Otoni/MG, 2011. '
            'Disponível em: https://repositorio.ufmg.br/bitstream/1843/BUBD-9D2J5X/1/trabalho_conclusao_de_curso.pdf. '
            'Acesso em: 17/05/2021.\n\n'
            'PARRA, J. (19 de mai de 2017). 1 vídeo (4 min) Aleitamento materno | '
            'O Processo de Pasteurização no Banco de Leite Humano. Fonte: '
            'Publicado pelo canal Hospital da Providência : Aleitamento materno | '
            'O Processo de Pasteurização no Banco de Leite Humano Acesso em: 15 de maio de 2021.\n\n'
            'PEREIRA DA, S. et al. Artigo original Depressão e suas implicações '
            'no aleitamento materno Depression and its implications in breast feeding. '
            '[s.l.] , 2007. Disponível em: <https://www.scielo.br/pdf/rprs/v29n1/v29n1a09.pdf>.\n\n'
            'PRIBYLOVA, Jaroslava et al. Colostrum of healthy mothers contains '
            'broad spectrum of secretory IgA autoantibodies. Journal of clinical '
            'immunology, New York, v.32,6, pp. 1372-1380, December, 2012.\n\n'
            'RECOMENDAÇÕES da OMS sobre atendimento pré-natal para uma experiência '
            'gestacional positiva. Genebra, Suíça: Organização Mundial da Saúde, '
            '2016. Disponível em: <https://apps.who.int/iris/bitstream/handle/'
            '10665/250800/WHORHR-16.12-por.pdf?sequence=2>. Acesso em: 14 nov. 2020.\n\n'
            'RIBEIRO, Dayna et al. Impactos psicossociais de mães privadas de '
            'amamentar. e-RAC – Unitri, 2020. Disponível em: '
            '< http://www.computacao.unitri.edu.br/erac/index.php/e-rac/article/view/1756>. '
            'Acesso em: 10 de maio 2021.\n\n'
            'ROCHA, Daniel; CARVALHO, Gildásio. Agentes Teratogênicos. Sistema de '
            'Informações sobre Agentes Teratogênicos UFBA. Disponível em: '
            '<https://siat.ufba.br/agentes-teratog%C3%AAnicos>. Acesso em: 09 nov. 2020.\n\n'
            'SOARES, R.C.S, et al. IMUNIDADE CONFERIDA PELO LEITE MATERNO. Revista\n\n'
            'VITOLO, Márcia Regina. Nutrição: da gestação ao envelhecimento. 1. ed. '
            'Rio de Janeiro: Rubio, 2008.'),
      ],
    );
  }
}
