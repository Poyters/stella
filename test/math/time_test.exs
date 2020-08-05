defmodule TimeTest do
  use ExUnit.Case
  doctest Time

  test "convert seconds to miliseconds" do
    assert Time.sec_to_ms(1) == 1000
  end

  test "convert miliseconds to seconds" do
    assert Time.ms_to_sec(1000) == 1.0
  end

  test "convert hms to seconds; sec(ss)" do
    assert Time.hms_to_sec("0:0:10") == 10
  end

  test "convert hms to seconds; sec(s)" do
    assert Time.hms_to_sec("0:0:1") == 1
  end

  test "convert hms to seconds; min(,m), sec(ss)" do
    assert Time.hms_to_sec("0:01:10") == 70
  end

  test "convert hms to seconds; min(m), sec(ss)" do
    assert Time.hms_to_sec("0:1:10") == 70
  end

  test "convert hms to seconds; h (h), min(mm), sec(ss)" do
    assert Time.hms_to_sec("2:1:10") == 7270
  end

  test "convert hms to seconds; h(hh), min(mm), sec(ss)" do
    assert Time.hms_to_sec("02:1:10") == 7270
  end

  test "convert hms to seconds; h (hh), min(mm), sec(ss)" do
    assert Time.hms_to_sec("12:1:10") == 43270
  end

  test "convert hms to miliseconds; sec(ss)" do
    assert Time.hms_to_ms("0:0:10") == 10000
  end

  test "convert hms to miliseconds; sec(s)" do
    assert Time.hms_to_ms("0:0:1") == 1000
  end

  test "convert hms to miliseconds; min(,m), sec(ss)" do
    assert Time.hms_to_ms("0:01:10") == 70000
  end

  test "convert hms to miliseconds; min(m), sec(ss)" do
    assert Time.hms_to_ms("0:1:10") == 70000
  end

  test "convert hms to miliseconds; h (h), min(mm), sec(ss)" do
    assert Time.hms_to_ms("2:1:10") == 7270000
  end

  test "convert hms to miliseconds; h(hh), min(mm), sec(ss)" do
    assert Time.hms_to_ms("02:1:10") == 7270000
  end

  test "convert hms to miliseconds; h (hh), min(mm), sec(ss)" do
    assert Time.hms_to_ms("12:1:10") == 43270000
  end
end
