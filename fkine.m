% units in mm

L1 = Link('d', 0, 'a', 170, 'alpha', 0);
L2 = Link('theta', 0, 'a', 0, 'alpha', 0, 'qlim', [0, 450.625-45]);
L3 = Link('theta', 0, 'a', 0, 'alpha', -pi/2, 'qlim', [0,183.232]);
bot = SerialLink([L1 L2 L3], 'name', 'Annular Gantry');