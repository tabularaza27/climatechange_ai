import cv2
import glob

sizes = [200, 400]
for f in glob.glob("../images/people/*"):
    for q in [200, 400]:
        if any("{}x{}".format(qq,qq) in f for qq in sizes):
            continue
        image = cv2.imread(f)
        h,w,d = image.shape
        if h > w:
            image = image[:w, :]
        elif w < h:
            assert(False)
        resized = cv2.resize(image, (q,q))
        prefix, ext = f.split(".")
        cv2.imwrite(prefix+"_{}x{}.jpg".format(q,q), resized)

