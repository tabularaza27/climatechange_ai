import cv2
import glob
import yaml

max_width = 400

new_carousels = []
any_change = False

with open('_data/carousels.yml', 'r') as f:
    carousels = yaml.safe_load(f)
    for carousel in carousels:
        new_carousel = []
        for entry in carousel['entries']:
            if 'image' not in entry or entry['image'].endswith('.svg') or '400w' in entry['image'] or entry['image'].startswith('http'):
                new_carousel.append(entry)
                continue

            fname = entry['image'][1:]
            print(fname)
            image = cv2.imread(fname)
            h,w,d = image.shape

            if w <= max_width:
                new_carousel.append(entry)
                continue

            w2 = max_width
            h2 = int(h * (w2 / w))
            print(w/h, w2/h2)
            resized = cv2.resize(image, (w2,h2))
            prefix, ext = fname.split(".")
            new_fname = prefix+"_{}w.jpg".format(w2)
            cv2.imwrite(new_fname, resized)
            entry['image'] = '/'+new_fname
            new_carousel.append(entry)
            any_change = True

        new_carousels.append({
            'title': carousel['title'],
            'entries': new_carousel
        })

if any_change:
    with open('_data/carousels.yml', 'w', encoding='utf8') as f:
        yaml.dump(new_carousels, f, default_flow_style=False, allow_unicode=True)
