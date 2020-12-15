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

  test "convert ms to HMS; 1)" do
    assert Time.ms_to_hms(1) == "00:00:00"
  end

  test "convert ms to HMS; 2)" do
    assert Time.ms_to_hms(10) == "00:00:00"
  end

  test "convert ms to HMS; 3)" do
    assert Time.ms_to_hms(100) == "00:00:00"
  end

  test "convert ms to HMS; 4)" do
    assert Time.ms_to_hms(999) == "00:00:00"
  end

  test "convert ms to HMS; 5)" do
    assert Time.ms_to_hms(1000) == "00:00:01"
  end

  test "convert ms to HMS; 6)" do
    assert Time.ms_to_hms(10000) == "00:00:10"
  end

  test "convert ms to HMS; 7)" do
    assert Time.ms_to_hms(100000) == "00:01:40"
  end

  test "convert ms to HMS; 8)" do
    assert Time.ms_to_hms(59999) == "00:00:59"
  end

  test "convert ms to HMS; 9)" do
    assert Time.ms_to_hms(3600000) == "01:00:00"
  end

  test "convert ms to HMS; 10)" do
    assert Time.ms_to_hms(3599999) == "00:59:59"
  end

  test "convert ms to HMS; 11)" do
    assert Time.ms_to_hms(3600001) == "01:00:00"
  end

  test "convert ms to HMS; 12)" do
    assert Time.ms_to_hms(3600091) == "01:00:00"
  end

  test "convert ms to HMS; 13)" do
    assert Time.ms_to_hms(3601000) == "01:00:01"
  end

  test "convert ms to HMS; 14)" do
    assert Time.ms_to_hms(3611000) == "01:00:11"
  end

  test "convert ms to HMS; 15)" do
    assert Time.ms_to_hms(3619000) == "01:00:19"
  end

  test "convert ms to HMS; 16)" do
    assert Time.ms_to_hms(86400000) == "24:00:00"
  end

  test "convert ms to HMS; 17)" do
    assert Time.ms_to_hms(86400001) == "24:00:00"
  end

  test "convert ms to HMS; 18)" do
    assert Time.ms_to_hms(86400090) == "24:00:00"
  end

  test "convert ms to HMS; 19)" do
    assert Time.ms_to_hms(86400090, ":") == "24:00:00"
  end

  test "convert ms to HMS; 20)" do
    assert Time.ms_to_hms(86400090, "-") == "24-00-00"
  end

  test "convert ms to HMS; 21)" do
    assert Time.ms_to_hms(86400090, ".") == "24.00.00"
  end

  test "convert sec to HMS; 1)" do
    assert Time.sec_to_hms(1) == "00:00:01"
  end

  test "convert sec to HMS; 2)" do
    assert Time.sec_to_hms(10) == "00:00:10"
  end

  test "convert sec to HMS; 3)" do
    assert Time.sec_to_hms(100) == "00:01:40"
  end

  test "convert sec to HMS; 4)" do
    assert Time.sec_to_hms(999) == "00:16:39"
  end

  test "convert sec to HMS; 5)" do
    assert Time.sec_to_hms(1000) == "00:16:40"
  end

  test "convert sec to HMS; 6)" do
    assert Time.sec_to_hms(10) == "00:00:10"
  end

  test "convert sec to HMS; 7)" do
    assert Time.sec_to_hms(100) == "00:01:40"
  end

  test "convert sec to HMS; 8)" do
    assert Time.sec_to_hms(3600) == "01:00:00"
  end

  test "convert sec to HMS; 9)" do
    assert Time.sec_to_hms(3611) == "01:00:11"
  end

  test "convert sec to HMS; 10)" do
    assert Time.sec_to_hms(3619) == "01:00:19"
  end

  test "convert sec to HMS; 11)" do
    assert Time.sec_to_hms(86400) == "24:00:00"
  end

  test "convert sec to HMS; 12)" do
    assert Time.sec_to_hms(3611, "-") == "01-00-11"
  end

  test "convert sec to HMS; 13)" do
    assert Time.sec_to_hms(86400, ":") == "24:00:00"
  end

  test "convert sec to HMS; 14)" do
    assert Time.sec_to_hms(86400, ".") == "24.00.00"
  end

end
