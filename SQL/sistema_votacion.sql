-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 05-04-2023 a las 07:50:34
-- Versión del servidor: 8.0.31
-- Versión de PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sistema_votacion`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `candidatos`
--

DROP TABLE IF EXISTS `candidatos`;
CREATE TABLE IF NOT EXISTS `candidatos` (
  `id_candidato` int NOT NULL AUTO_INCREMENT,
  `nombre_candidato` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `partido_candidato` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `id_region_candidato` int NOT NULL,
  `id_comuna_candidato` int NOT NULL,
  PRIMARY KEY (`id_candidato`),
  KEY `id_region_candidato_idx` (`id_region_candidato`),
  KEY `id_comuna_candidato_idx` (`id_comuna_candidato`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `candidatos`
--

INSERT INTO `candidatos` (`id_candidato`, `nombre_candidato`, `partido_candidato`, `id_region_candidato`, `id_comuna_candidato`) VALUES
(1, 'María González', 'Partido de la Gente', 423, 2866),
(2, 'Pedro Pérez', 'Frente Amplio', 422, 2814),
(3, 'Juan López', 'Unión Demócrata Independiente', 422, 2816),
(4, 'Ana Torres', 'Partido Socialista', 427, 2960),
(5, 'Francisco Ruiz', 'Renovación Nacional', 419, 2747),
(6, 'María Flores', 'Partido Socialista', 423, 2855),
(7, 'Pedro Ramírez', 'Renovación Nacional', 422, 2814),
(8, 'Sofía Sánchez', 'Partido de la Gente', 422, 2816),
(9, 'Juan Pérez', 'Frente Amplio', 427, 2960),
(10, 'Camila González', 'Unión Demócrata Independiente', 419, 2747),
(11, 'Jorge Gutiérrez', 'Partido Radical Socialdemócrata', 423, 2866),
(12, 'Marcela Aravena', 'Partido Ecologista Verde', 429, 3032),
(13, 'Andrés Morales', 'Partido Progresista', 424, 2896),
(14, 'Gonzalo Martínez', 'Partido Comunista', 428, 3014),
(15, 'Carolina Castillo', 'Partido Regionalista Independiente', 418, 2744),
(16, 'Manuel Ortiz', 'Renovación Nacional', 421, 2771),
(17, 'Cristina González', 'Partido Demócrata Cristiano', 425, 2908),
(18, 'Lucas Salas', 'Partido Humanista', 427, 2934),
(19, 'Isabella Rojas', 'Frente Amplio', 422, 2806),
(20, 'Fernando Vargas', 'Partido Radical Socialdemócrata', 423, 2853),
(21, 'Ana Vargas', 'Unión Demócrata Independiente', 419, 2748),
(22, 'Mario Campos', 'Partido Socialista', 423, 2835),
(23, 'Rosa Maldonado', 'Partido de la Gente', 423, 2833),
(24, 'Javier Castro', 'Partido Regionalista Independiente', 419, 2747),
(25, 'Carla Soto', 'Partido Progresista', 432, 3079),
(26, 'Mauricio Rojas', 'Partido Radical Socialdemócrata', 429, 3032),
(27, 'Diego Lagos', 'Partido Demócrata Cristiano', 425, 2928),
(28, 'Karen Castro', 'Renovación Nacional', 419, 2747),
(29, 'Pedro Molina', 'Partido Comunista', 430, 3048),
(30, 'Nicolás González', 'Partido Radical Socialdemócrata', 421, 2771),
(31, 'Vicente Pérez', 'Unión Demócrata Independiente', 425, 2908),
(32, 'Francisca Pérez', 'Partido Progresista', 422, 2811),
(33, 'Pablo Sánchez', 'Partido Radical Socialdemócrata', 424, 2896),
(34, 'Laura García', 'Partido Socialista', 423, 2866),
(35, 'Manuela Pérez', 'Renovación Nacional', 419, 2747),
(36, 'Joaquín Rojas', 'Partido de la Gente', 423, 2840),
(37, 'Carolina Gutiérrez', 'Partido Demócrata Cristiano', 426, 2934),
(38, 'Andrés León', 'Partido Progresista', 423, 2854),
(39, 'Lucas Torres', 'Unión Demócrata Independiente', 420, 2759),
(40, 'Florencia Castro', 'Partido Radical Socialdemócrata', 428, 3014),
(41, 'Jorge Silva', 'Partido Comunista', 430, 3035),
(42, 'Luisa González', 'Partido Radical Socialdemócrata', 422, 2814),
(43, 'Pablo Vargas', 'Partido Socialista', 427, 2960),
(44, 'María Martínez', 'Renovación Nacional', 419, 2747),
(45, 'Felipe Rojas', 'Partido Progresista', 422, 2809),
(46, 'Sofía Rojas', 'Partido de la Gente', 423, 2838),
(47, 'Andrea Salinas', 'Unión Demócrata Independiente', 421, 2771),
(48, 'Miguel Ángel Pérez', 'Partido Radical Socialdemócrata', 427, 2970),
(49, 'Camila González', 'Partido Comunista', 422, 2814),
(50, 'Patricia Soto', 'Partido Radical Socialdemócrata', 426, 2934),
(51, 'Sofía Flores', 'PartUnión Demócrata Independiente', 424, 2896),
(52, 'Ignacio Martínez', 'Partido Radical Socialdemócrata', 427, 2960),
(53, 'Verónica Gómez', 'Partido Progresista', 430, 3052),
(54, 'Pedro Torres', 'Partido de la Gente', 422, 2816),
(55, 'Mauricio Gutiérrez', 'Renovación Nacional', 418, 2744),
(56, 'Valentina Rivas', 'Partido Socialista', 425, 2928),
(57, 'Javier Pérez', 'Partido Radical Socialdemócrata', 429, 3032),
(58, 'Marcela Rojas', 'Unión Demócrata Independiente', 423, 2860),
(59, 'Diego Muñoz', 'Partido Comunista', 422, 2811),
(60, 'Natalia González', 'Partido Radical Socialdemócrata', 427, 2983),
(61, 'María Fernández', 'Partido Progresista', 423, 2837),
(62, 'Ignacio Aravena', 'Partido de la Gente', 423, 2833),
(63, 'Patricia Soto', 'Renovación Nacional', 428, 3020),
(64, 'Rodrigo Torres', 'Partido Socialista', 425, 2916),
(65, 'Francisco Rojas', 'Unión Demócrata Independiente', 422, 2806),
(66, 'Camila Álvarez', 'Partido Comunista', 431, 3067),
(67, 'Diego Martínez', 'Partido Radical Socialdemócrata', 427, 2934),
(68, 'Sara Orellana', 'Renovación Nacional', 419, 2747),
(69, 'Gustavo López', 'Partido Progresista', 423, 2869),
(70, 'Valeria Salinas', 'Partido de la Gente', 422, 2814),
(71, 'Marcelo Rojas', 'Partido Demócrata Cristiano', 425, 2926),
(72, 'Karen Pérez', 'Partido Radical Socialdemócrata', 432, 3079),
(73, 'Jorge Morales', 'Partido Comunista', 430, 3057),
(74, 'María José González', 'Unión Demócrata Independiente', 423, 2867),
(75, 'Juan Pérez', 'Partido Socialista', 422, 2811),
(76, 'Felipe Castro', 'Renovación Nacional', 425, 2903),
(77, 'Javier Vega', 'Partido Progresista', 423, 2832),
(78, 'Florencia Ortiz', 'Partido Radical Socialdemócrata', 427, 2960),
(79, 'Laura Muñoz', 'Partido Comunista', 430, 3050),
(80, 'Pablo Salas', 'Unión Demócrata Independiente', 422, 2809),
(81, 'Valentina Castro', 'Partido Socialista', 425, 2928),
(82, 'Francisca Díaz', 'Renovación Nacional', 420, 2759),
(83, 'Pedro Morales', 'Partido Progresista', 423, 2840),
(84, 'Carla Valenzuela', 'Partido de la Gente', 425, 2908),
(85, 'David Silva', 'Partido Radical Socialdemócrata', 424, 2896),
(86, 'Gabriel Soto', 'Partido Comunista', 430, 3048),
(87, 'Javiera Fernández', 'Unión Demócrata Independiente', 423, 2851),
(88, 'Manuel Pérez', 'Partido Socialista', 425, 2916),
(89, 'Andrea Salazar', 'Renovación Nacional', 427, 2983),
(90, 'Francisco Ramírez', 'Partido Progresista', 423, 2835);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comunas`
--

DROP TABLE IF EXISTS `comunas`;
CREATE TABLE IF NOT EXISTS `comunas` (
  `id_comunas` int NOT NULL AUTO_INCREMENT,
  `nombre_comuna` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `id_region_comuna` int NOT NULL,
  PRIMARY KEY (`id_comunas`),
  UNIQUE KEY `nombre_comuna` (`nombre_comuna`),
  KEY `id_region_comuna_idx` (`id_region_comuna`)
) ENGINE=InnoDB AUTO_INCREMENT=3084 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `comunas`
--

INSERT INTO `comunas` (`id_comunas`, `nombre_comuna`, `id_region_comuna`) VALUES
(2736, 'Arica', 417),
(2737, 'Camarones', 417),
(2738, 'General Lagos', 417),
(2739, 'Putre', 417),
(2740, 'Alto Hospicio', 418),
(2741, 'Camiña', 418),
(2742, 'Colchane', 418),
(2743, 'Huara', 418),
(2744, 'Iquique', 418),
(2745, 'Pica', 418),
(2746, 'Pozo Almonte', 418),
(2747, 'Antofagasta', 419),
(2748, 'Calama', 419),
(2749, 'María Elena', 419),
(2750, 'Mejillones', 419),
(2751, 'Ollagüe', 419),
(2752, 'San Pedro de Atacama', 419),
(2753, 'Sierra Gorda', 419),
(2754, 'Taltal', 419),
(2755, 'Tocopilla', 419),
(2756, 'Alto del Carmen', 420),
(2757, 'Caldera', 420),
(2758, 'Chañaral', 420),
(2759, 'Copiapó', 420),
(2760, 'Diego de Almagro', 420),
(2761, 'Freirina', 420),
(2762, 'Huasco', 420),
(2763, 'Tierra Amarilla', 420),
(2764, 'Vallenar', 420),
(2765, 'Andacollo', 421),
(2766, 'Canela', 421),
(2767, 'Combarbalá', 421),
(2768, 'Coquimbo', 421),
(2769, 'Illapel', 421),
(2770, 'La Higuera', 421),
(2771, 'La Serena', 421),
(2772, 'Los Vilos', 421),
(2773, 'Monte Patria', 421),
(2774, 'Ovalle', 421),
(2775, 'Paiguano', 421),
(2776, 'Punitaqui', 421),
(2777, 'Río Hurtado', 421),
(2778, 'Salamanca', 421),
(2779, 'Vicuña', 421),
(2780, 'Algarrobo', 422),
(2781, 'Cabildo', 422),
(2782, 'Calera', 422),
(2783, 'Calle Larga', 422),
(2784, 'Cartagena', 422),
(2785, 'Casablanca', 422),
(2786, 'Catemu', 422),
(2787, 'Concón', 422),
(2788, 'El Quisco', 422),
(2789, 'El Tabo', 422),
(2790, 'Hijuelas', 422),
(2791, 'Isla de Pascua', 422),
(2792, 'Juan Fernández', 422),
(2793, 'La Cruz', 422),
(2794, 'La Ligua', 422),
(2795, 'Limache', 422),
(2796, 'Llaillay', 422),
(2797, 'Los Andes', 422),
(2798, 'Nogales', 422),
(2799, 'Olmué', 422),
(2800, 'Panquehue', 422),
(2801, 'Papudo', 422),
(2802, 'Petorca', 422),
(2803, 'Puchuncaví', 422),
(2804, 'Putaendo', 422),
(2805, 'Quillota', 422),
(2806, 'Quilpué', 422),
(2807, 'Quintero', 422),
(2808, 'Rinconada', 422),
(2809, 'San Antonio', 422),
(2810, 'San Esteban', 422),
(2811, 'San Felipe', 422),
(2812, 'Santa María', 422),
(2813, 'Santo Domingo', 422),
(2814, 'Valparaíso', 422),
(2815, 'Villa Alemana', 422),
(2816, 'Viña del Mar', 422),
(2817, 'Zapallar', 422),
(2818, 'Alhué', 423),
(2819, 'Buin', 423),
(2820, 'Calera de Tango', 423),
(2821, 'Cerrillos', 423),
(2822, 'Cerro Navia', 423),
(2823, 'Colina', 423),
(2824, 'Conchalí', 423),
(2825, 'Curacaví', 423),
(2826, 'El Bosque', 423),
(2827, 'El Monte', 423),
(2828, 'Estación Central', 423),
(2829, 'Huechuraba', 423),
(2830, 'Independencia', 423),
(2831, 'Isla de Maipo', 423),
(2832, 'La Cisterna', 423),
(2833, 'La Florida', 423),
(2834, 'La Granja', 423),
(2835, 'La Pintana', 423),
(2836, 'La Reina', 423),
(2837, 'Lampa', 423),
(2838, 'Las Condes', 423),
(2839, 'Lo Barnechea', 423),
(2840, 'Lo Espejo', 423),
(2841, 'Lo Prado', 423),
(2842, 'Macul', 423),
(2843, 'Maipú', 423),
(2844, 'María Pinto', 423),
(2845, 'Melipilla', 423),
(2846, 'Ñuñoa', 423),
(2847, 'Padre Hurtado', 423),
(2848, 'Paine', 423),
(2849, 'Pedro Aguirre Cerda', 423),
(2850, 'Peñaflor', 423),
(2851, 'Peñalolén', 423),
(2852, 'Pirque', 423),
(2853, 'Providencia', 423),
(2854, 'Pudahuel', 423),
(2855, 'Puente Alto', 423),
(2856, 'Quilicura', 423),
(2857, 'Quinta Normal', 423),
(2858, 'Recoleta', 423),
(2859, 'Renca', 423),
(2860, 'San Bernardo', 423),
(2861, 'San Joaquín', 423),
(2862, 'San José de Maipo', 423),
(2863, 'San Miguel', 423),
(2864, 'San Pedro', 423),
(2865, 'San Ramón', 423),
(2866, 'Santiago', 423),
(2867, 'Talagante', 423),
(2868, 'Tiltil', 423),
(2869, 'Vitacura', 423),
(2870, 'Chépica', 424),
(2871, 'Chimbarongo', 424),
(2872, 'Codegua', 424),
(2873, 'Coinco', 424),
(2874, 'Coltauco', 424),
(2875, 'Doñihue', 424),
(2876, 'Graneros', 424),
(2877, 'La Estrella', 424),
(2878, 'Las Cabras', 424),
(2879, 'Litueche', 424),
(2880, 'Lolol', 424),
(2881, 'Machalí', 424),
(2882, 'Malloa', 424),
(2883, 'Marchihue', 424),
(2884, 'Mostazal', 424),
(2885, 'Nancagua', 424),
(2886, 'Navidad', 424),
(2887, 'Olivar', 424),
(2888, 'Palmilla', 424),
(2889, 'Paredones', 424),
(2890, 'Peralillo', 424),
(2891, 'Peumo', 424),
(2892, 'Pichidegua', 424),
(2893, 'Pichilemu', 424),
(2894, 'Placilla', 424),
(2895, 'Pumanque', 424),
(2896, 'Rancagua', 424),
(2897, 'Rengo', 424),
(2898, 'Requínoa', 424),
(2899, 'San Fernando', 424),
(2900, 'San Francisco de Mostazal', 424),
(2901, 'San Vicente', 424),
(2902, 'Santa Cruz', 424),
(2903, 'Cauquenes', 425),
(2904, 'Chanco', 425),
(2905, 'Colbún', 425),
(2906, 'Constitución', 425),
(2907, 'Curepto', 425),
(2908, 'Curicó', 425),
(2909, 'Empedrado', 425),
(2910, 'Hualañé', 425),
(2911, 'Licantén', 425),
(2912, 'Linares', 425),
(2913, 'Longaví', 425),
(2914, 'Maule', 425),
(2915, 'Molina', 425),
(2916, 'Parral', 425),
(2917, 'Pelarco', 425),
(2918, 'Pelluhue', 425),
(2919, 'Pencahue', 425),
(2920, 'Rauco', 425),
(2921, 'Retiro', 425),
(2922, 'Romeral', 425),
(2923, 'Río Claro', 425),
(2924, 'Sagrada Familia', 425),
(2925, 'San Clemente', 425),
(2926, 'San Javier', 425),
(2927, 'San Rafael', 425),
(2928, 'Talca', 425),
(2929, 'Teno', 425),
(2930, 'Vichuquén', 425),
(2931, 'Villa Alegre', 425),
(2932, 'Yerbas Buenas', 425),
(2933, 'Bulnes', 426),
(2934, 'Chillán', 426),
(2935, 'Chillán Viejo', 426),
(2936, 'Cobquecura', 426),
(2937, 'Coelemu', 426),
(2938, 'Coihueco', 426),
(2939, 'El Carmen', 426),
(2940, 'Ninhue', 426),
(2941, 'Ñiquén', 426),
(2942, 'Pemuco', 426),
(2943, 'Pinto', 426),
(2944, 'Portezuelo', 426),
(2945, 'Quillón', 426),
(2946, 'Quirihue', 426),
(2947, 'Ránquil', 426),
(2948, 'San Carlos', 426),
(2949, 'San Fabián', 426),
(2950, 'San Ignacio', 426),
(2951, 'San Nicolás', 426),
(2952, 'Treguaco', 426),
(2953, 'Yungay', 426),
(2954, 'Alto Biobío', 427),
(2955, 'Antuco', 427),
(2956, 'Arauco', 427),
(2957, 'Cabrero', 427),
(2958, 'Cañete', 427),
(2959, 'Chiguayante', 427),
(2960, 'Concepción', 427),
(2961, 'Contulmo', 427),
(2962, 'Coronel', 427),
(2963, 'Curanilahue', 427),
(2964, 'Florida', 427),
(2965, 'Hualpén', 427),
(2966, 'Hualqui', 427),
(2967, 'Laja', 427),
(2968, 'Lebu', 427),
(2969, 'Los Álamos', 427),
(2970, 'Los Ángeles', 427),
(2971, 'Lota', 427),
(2972, 'Mulchén', 427),
(2973, 'Nacimiento', 427),
(2974, 'Negrete', 427),
(2975, 'Nueva Aldea', 427),
(2976, 'Penco', 427),
(2977, 'Quilaco', 427),
(2978, 'Quilleco', 427),
(2979, 'San Pedro de la Paz', 427),
(2980, 'San Rosendo', 427),
(2981, 'Santa Bárbara', 427),
(2982, 'Santa Juana', 427),
(2983, 'Talcahuano', 427),
(2984, 'Tirúa', 427),
(2985, 'Tomé', 427),
(2986, 'Tucapel', 427),
(2987, 'Yumbel', 427),
(2989, 'Angol', 428),
(2990, 'Carahue', 428),
(2991, 'Cholchol', 428),
(2992, 'Collipulli', 428),
(2993, 'Cunco', 428),
(2994, 'Curacautín', 428),
(2995, 'Curarrehue', 428),
(2996, 'Ercilla', 428),
(2997, 'Freire', 428),
(2998, 'Galvarino', 428),
(2999, 'Gorbea', 428),
(3000, 'Lautaro', 428),
(3001, 'Loncoche', 428),
(3002, 'Lonquimay', 428),
(3003, 'Los Sauces', 428),
(3004, 'Lumaco', 428),
(3005, 'Melipeuco', 428),
(3006, 'Nueva Imperial', 428),
(3007, 'Padre las Casas', 428),
(3008, 'Perquenco', 428),
(3009, 'Pitrufquén', 428),
(3010, 'Pucón', 428),
(3011, 'Purén', 428),
(3012, 'Renaico', 428),
(3013, 'Saavedra', 428),
(3014, 'Temuco', 428),
(3015, 'Teodoro Schmidt', 428),
(3016, 'Toltén', 428),
(3017, 'Traiguén', 428),
(3018, 'Victoria', 428),
(3019, 'Vilcún', 428),
(3020, 'Villarrica', 428),
(3021, 'Corral', 429),
(3022, 'Futrono', 429),
(3023, 'La Unión', 429),
(3024, 'Lago Ranco', 429),
(3025, 'Lanco', 429),
(3026, 'Los Lagos', 429),
(3027, 'Mariquina', 429),
(3028, 'Máfil', 429),
(3029, 'Paillaco', 429),
(3030, 'Panguipulli', 429),
(3031, 'Río Bueno', 429),
(3032, 'Valdivia', 429),
(3033, 'Ancud', 430),
(3034, 'Calbuco', 430),
(3035, 'Castro', 430),
(3036, 'Chaitén', 430),
(3037, 'Chonchi', 430),
(3038, 'Cochamó', 430),
(3039, 'Curaco de Vélez', 430),
(3040, 'Dalcahue', 430),
(3041, 'Fresia', 430),
(3042, 'Frutillar', 430),
(3043, 'Futaleufú', 430),
(3044, 'Hualaihué', 430),
(3045, 'Llanquihue', 430),
(3046, 'Los Muermos', 430),
(3047, 'Maullín', 430),
(3048, 'Osorno', 430),
(3049, 'Palena', 430),
(3050, 'Puerto Montt', 430),
(3051, 'Puerto Octay', 430),
(3052, 'Puerto Varas', 430),
(3053, 'Puqueldón', 430),
(3054, 'Purranque', 430),
(3055, 'Puyehue', 430),
(3056, 'Queilén', 430),
(3057, 'Quellón', 430),
(3058, 'Quemchi', 430),
(3059, 'Quinchao', 430),
(3060, 'Río Negro', 430),
(3061, 'San Juan de la Costa', 430),
(3062, 'San Pablo', 430),
(3063, 'Aysén', 431),
(3064, 'Chile Chico', 431),
(3065, 'Cisnes', 431),
(3066, 'Cochrane', 431),
(3067, 'Coyhaique', 431),
(3068, 'Guaitecas', 431),
(3069, 'Lago Verde', 431),
(3070, 'OHiggins', 431),
(3071, 'Río Ibáñez', 431),
(3072, 'Tortel', 431),
(3073, 'Antártica', 432),
(3074, 'Cabo de Hornos (Ex Navarino)', 432),
(3075, 'Laguna Blanca', 432),
(3076, 'Natales', 432),
(3077, 'Porvenir', 432),
(3078, 'Primavera', 432),
(3079, 'Punta Arenas', 432),
(3080, 'Río Verde', 432),
(3081, 'San Gregorio', 432),
(3082, 'Timaukel', 432),
(3083, 'Torres del Paine', 432);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medios`
--

DROP TABLE IF EXISTS `medios`;
CREATE TABLE IF NOT EXISTS `medios` (
  `id_medio` int NOT NULL AUTO_INCREMENT,
  `nombre_medio` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id_medio`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `medios`
--

INSERT INTO `medios` (`id_medio`, `nombre_medio`) VALUES
(1, 'TV'),
(2, 'Amigo'),
(3, 'Web'),
(4, 'Redes Sociales');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `regiones`
--

DROP TABLE IF EXISTS `regiones`;
CREATE TABLE IF NOT EXISTS `regiones` (
  `id_region` int NOT NULL AUTO_INCREMENT,
  `nombre_region` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id_region`),
  UNIQUE KEY `nombre_region` (`nombre_region`)
) ENGINE=InnoDB AUTO_INCREMENT=433 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `regiones`
--

INSERT INTO `regiones` (`id_region`, `nombre_region`) VALUES
(419, 'Región de Antofagasta'),
(417, 'Región de Arica y Parinacota'),
(420, 'Región de Atacama'),
(431, 'Región de Aysén del General Carlos Ibáñez del Campo'),
(421, 'Región de Coquimbo'),
(428, 'Región de la Araucanía'),
(430, 'Región de Los Lagos'),
(429, 'Región de Los Ríos'),
(432, 'Región de Magallanes y de la Antártica Chilena'),
(418, 'Región de Tarapacá'),
(422, 'Región de Valparaíso'),
(427, 'Región del Biobío'),
(424, 'Región del Libertador Gral. Bernardo OHiggins'),
(425, 'Región del Maule'),
(426, 'Región del Ñuble'),
(423, 'Región Metropolitana de Santiago');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `votantes`
--

DROP TABLE IF EXISTS `votantes`;
CREATE TABLE IF NOT EXISTS `votantes` (
  `id_votante` int NOT NULL AUTO_INCREMENT,
  `nombre_votante` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `alias` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `rut_votante` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email_votante` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `id_region_votante` int NOT NULL,
  `id_comuna_votante` int NOT NULL,
  PRIMARY KEY (`id_votante`),
  KEY `id_region_votante_idx` (`id_region_votante`),
  KEY `id_comuna_votante_idx` (`id_comuna_votante`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `votantes_medios`
--

DROP TABLE IF EXISTS `votantes_medios`;
CREATE TABLE IF NOT EXISTS `votantes_medios` (
  `id_votante` int NOT NULL,
  `id_medio` int NOT NULL,
  KEY `id_votante_idx` (`id_votante`),
  KEY `id_medios_idx` (`id_medio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `votos`
--

DROP TABLE IF EXISTS `votos`;
CREATE TABLE IF NOT EXISTS `votos` (
  `id_voto` int NOT NULL AUTO_INCREMENT,
  `id_votante_voto` int NOT NULL,
  `id_candidato_voto` int NOT NULL,
  PRIMARY KEY (`id_voto`),
  KEY `id_votante_voto_idx` (`id_votante_voto`),
  KEY `id_candidato_voto_idx` (`id_candidato_voto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `candidatos`
--
ALTER TABLE `candidatos`
  ADD CONSTRAINT `id_comuna_candidato` FOREIGN KEY (`id_comuna_candidato`) REFERENCES `comunas` (`id_comunas`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `id_region_candidato` FOREIGN KEY (`id_region_candidato`) REFERENCES `regiones` (`id_region`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Filtros para la tabla `comunas`
--
ALTER TABLE `comunas`
  ADD CONSTRAINT `id_region_comuna` FOREIGN KEY (`id_region_comuna`) REFERENCES `regiones` (`id_region`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Filtros para la tabla `votantes`
--
ALTER TABLE `votantes`
  ADD CONSTRAINT `id_comuna_votante` FOREIGN KEY (`id_comuna_votante`) REFERENCES `comunas` (`id_comunas`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `id_region_votante` FOREIGN KEY (`id_region_votante`) REFERENCES `regiones` (`id_region`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Filtros para la tabla `votantes_medios`
--
ALTER TABLE `votantes_medios`
  ADD CONSTRAINT `id_medios` FOREIGN KEY (`id_medio`) REFERENCES `medios` (`id_medio`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `id_votante` FOREIGN KEY (`id_votante`) REFERENCES `votantes` (`id_votante`);

--
-- Filtros para la tabla `votos`
--
ALTER TABLE `votos`
  ADD CONSTRAINT `id_candidato_voto` FOREIGN KEY (`id_candidato_voto`) REFERENCES `candidatos` (`id_candidato`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `id_votante_voto` FOREIGN KEY (`id_votante_voto`) REFERENCES `votantes` (`id_votante`) ON DELETE RESTRICT ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
