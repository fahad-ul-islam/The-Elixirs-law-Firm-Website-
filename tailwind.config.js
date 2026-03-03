module.exports = {
  content: ['./*.html'],
  theme: {
    extend: {
      colors: {
        navy: {
          DEFAULT: '#0a192f',
          light: '#112240',
        },
        brown: {
          DEFAULT: '#3E2723',
          light: '#4E342E',
        },
        gold: {
          DEFAULT: '#CDA34F',
          light: '#CDA34F',
        },
        body: '#F4F4F4',
        text: {
          primary: '#2C2C2C',
        },
        divider: '#E5E5E5',
      },
      fontFamily: {
        serif: ['Playfair Display', 'serif'],
        sans: ['Lato', 'sans-serif'],
      },
      height: {
        '32': '8rem',
      },
    },
  },
  plugins: [],
}
