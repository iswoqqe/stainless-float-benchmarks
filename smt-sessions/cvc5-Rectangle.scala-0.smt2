; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1 () Bool)

(assert start!1)

(declare-fun res!8 () Bool)

(declare-fun e!2 () Bool)

(assert (=> start!1 (=> (not res!8) (not e!2))))

(declare-datatypes ((Rectangle!5 0))(
  ( (Rectangle!6 (x!26 (_ FloatingPoint 11 53)) (y!6 (_ FloatingPoint 11 53)) (width!6 (_ FloatingPoint 11 53)) (height!6 (_ FloatingPoint 11 53))) )
))
(declare-fun thiss!13 () Rectangle!5)

(declare-fun arg1!1 () (_ FloatingPoint 11 53))

(declare-fun arg2!1 () (_ FloatingPoint 11 53))

(assert (=> start!1 (= res!8 (and (not (fp.isInfinite (x!26 thiss!13))) (not (fp.isNaN (x!26 thiss!13))) (not (fp.isInfinite (y!6 thiss!13))) (not (fp.isNaN (y!6 thiss!13))) (not (fp.isInfinite arg1!1)) (not (fp.isNaN arg1!1)) (not (fp.isInfinite arg2!1)) (not (fp.isNaN arg2!1))))))

(assert (=> start!1 e!2))

(assert (=> start!1 true))

(declare-fun lt!2 () Rectangle!5)

(declare-fun b!2 () Bool)

(assert (=> b!2 (= e!2 (and (fp.leq (fp #b1 #b10000000000 #b1011000010100011110101110000101000111101011100001010) (x!26 lt!2)) (fp.leq (x!26 lt!2) (fp #b1 #b10000000001 #b0110000111101011100001010001111010111000010100011111)) (fp.leq (fp #b1 #b10000000000 #b1011000010100011110101110000101000111101011100001010) (y!6 lt!2)) (fp.leq (y!6 lt!2) (fp #b1 #b10000000001 #b0110000111101011100001010001111010111000010100011111)) (fp.lt (fp #b0 #b10000000000 #b1000110011001100110011001100110011001100110011001101) (width!6 lt!2)) (fp.leq (width!6 lt!2) (fp #b0 #b10000000000 #b1101110111011001011111110110001010110110101011101000)) (fp.lt (fp #b0 #b10000000000 #b1000000000000000000000001101011010111111100101001101) (height!6 lt!2)) (fp.leq (height!6 lt!2) (fp #b0 #b10000000001 #b0000000000000110100011011011100010111010110001110001)) (fp.lt (fp #b0 #b10000000000 #b1000000000001001110101010110101111010111101111110111) arg1!1) (fp.leq arg1!1 (fp #b0 #b10000000001 #b0000000000100111010100100101010001100000101010100110)) (fp.lt (fp #b1 #b10000000001 #b1001100110011001100110101101101110111000111110001110) arg2!1) (fp.leq arg2!1 (fp #b0 #b10000000000 #b1000000000000011010001101101110001011101011000111001)) (or (fp.isInfinite (x!26 lt!2)) (fp.isNaN (x!26 lt!2)) (fp.isInfinite (y!6 lt!2)) (fp.isNaN (y!6 lt!2)) (fp.isInfinite (width!6 lt!2)) (fp.isNaN (width!6 lt!2)) (fp.isInfinite (height!6 lt!2)) (fp.isNaN (height!6 lt!2)))))))

(declare-datatypes ((Area!4 0))(
  ( (Area!5 (rectangle!7 Rectangle!5)) )
))
(declare-datatypes ((AffineTransform!4 0))(
  ( (AffineTransform!5 (m00!6 (_ FloatingPoint 11 53)) (m10!6 (_ FloatingPoint 11 53)) (m01!6 (_ FloatingPoint 11 53)) (m11!6 (_ FloatingPoint 11 53)) (m02!6 (_ FloatingPoint 11 53)) (m12!6 (_ FloatingPoint 11 53))) )
))
(declare-fun transformedArea!0 (Area!4 AffineTransform!4) Area!4)

(declare-fun scaling!0 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53)) AffineTransform!4)

(assert (=> b!2 (= lt!2 (rectangle!7 (transformedArea!0 (Area!5 thiss!13) (scaling!0 arg1!1 arg2!1))))))

(assert (= (and start!1 res!8) b!2))

(declare-fun m!1 () Bool)

(assert (=> b!2 m!1))

(assert (=> b!2 m!1))

(declare-fun m!3 () Bool)

(assert (=> b!2 m!3))

(push 1)

(assert (not b!2))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

